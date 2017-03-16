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

global.wlc = wlc;
