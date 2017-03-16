ffi = require("ffi");


wlc = ffi.Library('libwlc', {
    'wlc_view_set_mask': [ 'void', ['pointer', 'pointer']],
    'wlc_view_get_output': [ 'pointer', ['pointer']],
    'wlc_view_bring_to_front': [ 'void', ['pointer']],
    'wlc_view_focus': [ 'void', ['pointer', 'int', 'int']],
    'wlc_view_set_state': [ 'void', []],

    'wlc_output_get_mask': [ 'pointer', ['pointer']],

    'wlc_set_view_created_cb':  [ 'void', ['pointer']],
    'wlc_set_view_focus_cb':  [ 'void', ['pointer']],

    'wlc_init': [ 'int', []],
    'wlc_run': [ 'void', []]
});

function view_created(view) {
    var output = wlc.wlc_view_get_output(view);
    var mask = wlc.wlc_output_get_mask(output);
    console.log("view created ",view, output, mask);
    wlc.wlc_view_set_mask(view, mask);
    wlc.wlc_view_bring_to_front(view);
    wlc.wlc_view_focus(view);
    return 1;
}

const WLC_BIT_ACTIVATED = 1<<4;

function view_focused(view, focus) {
    console.log("hey");
    wlc.wlc_view_set_state(view, WLC_BIT_ACTIVATED, focus);
    console.log("view focused ",view, focus);
}

global.runCompositor = function main() {
    wlc.wlc_set_view_created_cb(ffi.Callback('int',['pointer'],view_created));
    wlc.wlc_set_view_focus_cb(ffi.Callback('void',['pointer', 'int'],
                                           view_focused));
    if(! wlc.wlc_init()) {
        console.log("init returned null, exiting");
        process.exit(1);
    }
    wlc.wlc_run();
}
