# This file has been generated by node2nix 1.1.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "ffi-2.2.0" = {
      name = "ffi";
      packageName = "ffi";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ffi/-/ffi-2.2.0.tgz";
        sha1 = "bf18b04666a29f71227ed56895d5430af47042fa";
      };
    };
    "node-gyp-3.6.0" = {
      name = "node-gyp";
      packageName = "node-gyp";
      version = "3.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-gyp/-/node-gyp-3.6.0.tgz";
        sha1 = "7474f63a3a0501161dda0b6341f022f14c423fa6";
      };
    };
    "bindings-1.2.1" = {
      name = "bindings";
      packageName = "bindings";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/bindings/-/bindings-1.2.1.tgz";
        sha1 = "14ad6113812d2d37d72e67b4cacb4bb726505f11";
      };
    };
    "debug-2.6.3" = {
      name = "debug";
      packageName = "debug";
      version = "2.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.6.3.tgz";
        sha1 = "0f7eb8c30965ec08c72accfa0130c8b79984141d";
      };
    };
    "ref-1.3.4" = {
      name = "ref";
      packageName = "ref";
      version = "1.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/ref/-/ref-1.3.4.tgz";
        sha1 = "724d2bf8ac85f8c8db194d3d85be6efe416bc1e5";
      };
    };
    "ref-struct-1.1.0" = {
      name = "ref-struct";
      packageName = "ref-struct";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ref-struct/-/ref-struct-1.1.0.tgz";
        sha1 = "5d5ee65ad41cefc3a5c5feb40587261e479edc13";
      };
    };
    "nan-2.5.1" = {
      name = "nan";
      packageName = "nan";
      version = "2.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.5.1.tgz";
        sha1 = "d5b01691253326a97a2bbee9e61c55d8d60351e2";
      };
    };
    "ms-0.7.2" = {
      name = "ms";
      packageName = "ms";
      version = "0.7.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-0.7.2.tgz";
        sha1 = "ae25cf2512b3885a1d95d7f037868d8431124765";
      };
    };
    "fstream-1.0.11" = {
      name = "fstream";
      packageName = "fstream";
      version = "1.0.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/fstream/-/fstream-1.0.11.tgz";
        sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
      };
    };
    "glob-7.1.1" = {
      name = "glob";
      packageName = "glob";
      version = "7.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-7.1.1.tgz";
        sha1 = "805211df04faaf1c63a3600306cdf5ade50b2ec8";
      };
    };
    "graceful-fs-4.1.11" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    };
    "minimatch-3.0.3" = {
      name = "minimatch";
      packageName = "minimatch";
      version = "3.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.3.tgz";
        sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
      };
    };
    "mkdirp-0.5.1" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    };
    "nopt-3.0.6" = {
      name = "nopt";
      packageName = "nopt";
      version = "3.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
        sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
      };
    };
    "npmlog-4.0.2" = {
      name = "npmlog";
      packageName = "npmlog";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/npmlog/-/npmlog-4.0.2.tgz";
        sha1 = "d03950e0e78ce1527ba26d2a7592e9348ac3e75f";
      };
    };
    "osenv-0.1.4" = {
      name = "osenv";
      packageName = "osenv";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/osenv/-/osenv-0.1.4.tgz";
        sha1 = "42fe6d5953df06c8064be6f176c3d05aaaa34644";
      };
    };
    "request-2.81.0" = {
      name = "request";
      packageName = "request";
      version = "2.81.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/request/-/request-2.81.0.tgz";
        sha1 = "c6928946a0e06c5f8d6f8a9333469ffda46298a0";
      };
    };
    "rimraf-2.6.1" = {
      name = "rimraf";
      packageName = "rimraf";
      version = "2.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-2.6.1.tgz";
        sha1 = "c2338ec643df7a1b7fe5c54fa86f57428a55f33d";
      };
    };
    "semver-5.3.0" = {
      name = "semver";
      packageName = "semver";
      version = "5.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      };
    };
    "tar-2.2.1" = {
      name = "tar";
      packageName = "tar";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
        sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
      };
    };
    "which-1.2.12" = {
      name = "which";
      packageName = "which";
      version = "1.2.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-1.2.12.tgz";
        sha1 = "de67b5e450269f194909ef23ece4ebe416fa1192";
      };
    };
    "inherits-2.0.3" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    };
    "fs.realpath-1.0.0" = {
      name = "fs.realpath";
      packageName = "fs.realpath";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    };
    "inflight-1.0.6" = {
      name = "inflight";
      packageName = "inflight";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    };
    "path-is-absolute-1.0.1" = {
      name = "path-is-absolute";
      packageName = "path-is-absolute";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    };
    "brace-expansion-1.1.6" = {
      name = "brace-expansion";
      packageName = "brace-expansion";
      version = "1.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.6.tgz";
        sha1 = "7197d7eaa9b87e648390ea61fc66c84427420df9";
      };
    };
    "balanced-match-0.4.2" = {
      name = "balanced-match";
      packageName = "balanced-match";
      version = "0.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.4.2.tgz";
        sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
      };
    };
    "concat-map-0.0.1" = {
      name = "concat-map";
      packageName = "concat-map";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    };
    "minimist-0.0.8" = {
      name = "minimist";
      packageName = "minimist";
      version = "0.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    };
    "abbrev-1.1.0" = {
      name = "abbrev";
      packageName = "abbrev";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/abbrev/-/abbrev-1.1.0.tgz";
        sha1 = "d0554c2256636e2f56e7c2e5ad183f859428d81f";
      };
    };
    "are-we-there-yet-1.1.2" = {
      name = "are-we-there-yet";
      packageName = "are-we-there-yet";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
        sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
      };
    };
    "console-control-strings-1.1.0" = {
      name = "console-control-strings";
      packageName = "console-control-strings";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    };
    "gauge-2.7.3" = {
      name = "gauge";
      packageName = "gauge";
      version = "2.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/gauge/-/gauge-2.7.3.tgz";
        sha1 = "1c23855f962f17b3ad3d0dc7443f304542edfe09";
      };
    };
    "set-blocking-2.0.0" = {
      name = "set-blocking";
      packageName = "set-blocking";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    };
    "delegates-1.0.0" = {
      name = "delegates";
      packageName = "delegates";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    };
    "readable-stream-2.2.5" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "2.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.2.5.tgz";
        sha1 = "a0b187304e05bab01a4ce2b4cc9c607d5aa1d606";
      };
    };
    "buffer-shims-1.0.0" = {
      name = "buffer-shims";
      packageName = "buffer-shims";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-shims/-/buffer-shims-1.0.0.tgz";
        sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
      };
    };
    "core-util-is-1.0.2" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    };
    "isarray-1.0.0" = {
      name = "isarray";
      packageName = "isarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    };
    "process-nextick-args-1.0.7" = {
      name = "process-nextick-args";
      packageName = "process-nextick-args";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    };
    "string_decoder-0.10.31" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "0.10.31";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    };
    "util-deprecate-1.0.2" = {
      name = "util-deprecate";
      packageName = "util-deprecate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    };
    "aproba-1.1.1" = {
      name = "aproba";
      packageName = "aproba";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/aproba/-/aproba-1.1.1.tgz";
        sha1 = "95d3600f07710aa0e9298c726ad5ecf2eacbabab";
      };
    };
    "has-unicode-2.0.1" = {
      name = "has-unicode";
      packageName = "has-unicode";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    };
    "object-assign-4.1.1" = {
      name = "object-assign";
      packageName = "object-assign";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    };
    "signal-exit-3.0.2" = {
      name = "signal-exit";
      packageName = "signal-exit";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    };
    "string-width-1.0.2" = {
      name = "string-width";
      packageName = "string-width";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    };
    "strip-ansi-3.0.1" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    };
    "wide-align-1.1.0" = {
      name = "wide-align";
      packageName = "wide-align";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/wide-align/-/wide-align-1.1.0.tgz";
        sha1 = "40edde802a71fea1f070da3e62dcda2e7add96ad";
      };
    };
    "code-point-at-1.1.0" = {
      name = "code-point-at";
      packageName = "code-point-at";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    };
    "is-fullwidth-code-point-1.0.0" = {
      name = "is-fullwidth-code-point";
      packageName = "is-fullwidth-code-point";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    };
    "number-is-nan-1.0.1" = {
      name = "number-is-nan";
      packageName = "number-is-nan";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    };
    "ansi-regex-2.1.1" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    };
    "os-homedir-1.0.2" = {
      name = "os-homedir";
      packageName = "os-homedir";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    };
    "os-tmpdir-1.0.2" = {
      name = "os-tmpdir";
      packageName = "os-tmpdir";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    };
    "aws-sign2-0.6.0" = {
      name = "aws-sign2";
      packageName = "aws-sign2";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
        sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
      };
    };
    "aws4-1.6.0" = {
      name = "aws4";
      packageName = "aws4";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws4/-/aws4-1.6.0.tgz";
        sha1 = "83ef5ca860b2b32e4a0deedee8c771b9db57471e";
      };
    };
    "caseless-0.12.0" = {
      name = "caseless";
      packageName = "caseless";
      version = "0.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    };
    "combined-stream-1.0.5" = {
      name = "combined-stream";
      packageName = "combined-stream";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
        sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
      };
    };
    "extend-3.0.0" = {
      name = "extend";
      packageName = "extend";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
        sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
      };
    };
    "forever-agent-0.6.1" = {
      name = "forever-agent";
      packageName = "forever-agent";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    };
    "form-data-2.1.2" = {
      name = "form-data";
      packageName = "form-data";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-2.1.2.tgz";
        sha1 = "89c3534008b97eada4cbb157d58f6f5df025eae4";
      };
    };
    "har-validator-4.2.1" = {
      name = "har-validator";
      packageName = "har-validator";
      version = "4.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-validator/-/har-validator-4.2.1.tgz";
        sha1 = "33481d0f1bbff600dd203d75812a6a5fba002e2a";
      };
    };
    "hawk-3.1.3" = {
      name = "hawk";
      packageName = "hawk";
      version = "3.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
        sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
      };
    };
    "http-signature-1.1.1" = {
      name = "http-signature";
      packageName = "http-signature";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-signature/-/http-signature-1.1.1.tgz";
        sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
      };
    };
    "is-typedarray-1.0.0" = {
      name = "is-typedarray";
      packageName = "is-typedarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    };
    "isstream-0.1.2" = {
      name = "isstream";
      packageName = "isstream";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    };
    "json-stringify-safe-5.0.1" = {
      name = "json-stringify-safe";
      packageName = "json-stringify-safe";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    };
    "mime-types-2.1.14" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.14.tgz";
        sha1 = "f7ef7d97583fcaf3b7d282b6f8b5679dab1e94ee";
      };
    };
    "oauth-sign-0.8.2" = {
      name = "oauth-sign";
      packageName = "oauth-sign";
      version = "0.8.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      };
    };
    "performance-now-0.2.0" = {
      name = "performance-now";
      packageName = "performance-now";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/performance-now/-/performance-now-0.2.0.tgz";
        sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
      };
    };
    "qs-6.4.0" = {
      name = "qs";
      packageName = "qs";
      version = "6.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.4.0.tgz";
        sha1 = "13e26d28ad6b0ffaa91312cd3bf708ed351e7233";
      };
    };
    "safe-buffer-5.0.1" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.0.1.tgz";
        sha1 = "d263ca54696cd8a306b5ca6551e92de57918fbe7";
      };
    };
    "stringstream-0.0.5" = {
      name = "stringstream";
      packageName = "stringstream";
      version = "0.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
        sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
      };
    };
    "tough-cookie-2.3.2" = {
      name = "tough-cookie";
      packageName = "tough-cookie";
      version = "2.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.2.tgz";
        sha1 = "f081f76e4c85720e6c37a5faced737150d84072a";
      };
    };
    "tunnel-agent-0.6.0" = {
      name = "tunnel-agent";
      packageName = "tunnel-agent";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    };
    "uuid-3.0.1" = {
      name = "uuid";
      packageName = "uuid";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-3.0.1.tgz";
        sha1 = "6544bba2dfda8c1cf17e629a3a305e2bb1fee6c1";
      };
    };
    "delayed-stream-1.0.0" = {
      name = "delayed-stream";
      packageName = "delayed-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    };
    "asynckit-0.4.0" = {
      name = "asynckit";
      packageName = "asynckit";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    };
    "ajv-4.11.5" = {
      name = "ajv";
      packageName = "ajv";
      version = "4.11.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ajv/-/ajv-4.11.5.tgz";
        sha1 = "b6ee74657b993a01dce44b7944d56f485828d5bd";
      };
    };
    "har-schema-1.0.5" = {
      name = "har-schema";
      packageName = "har-schema";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-schema/-/har-schema-1.0.5.tgz";
        sha1 = "d263135f43307c02c602afc8fe95970c0151369e";
      };
    };
    "co-4.6.0" = {
      name = "co";
      packageName = "co";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    };
    "json-stable-stringify-1.0.1" = {
      name = "json-stable-stringify";
      packageName = "json-stable-stringify";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
        sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
      };
    };
    "jsonify-0.0.0" = {
      name = "jsonify";
      packageName = "jsonify";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
        sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
      };
    };
    "hoek-2.16.3" = {
      name = "hoek";
      packageName = "hoek";
      version = "2.16.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
        sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
      };
    };
    "boom-2.10.1" = {
      name = "boom";
      packageName = "boom";
      version = "2.10.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
        sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
      };
    };
    "cryptiles-2.0.5" = {
      name = "cryptiles";
      packageName = "cryptiles";
      version = "2.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
        sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
      };
    };
    "sntp-1.0.9" = {
      name = "sntp";
      packageName = "sntp";
      version = "1.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
        sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
      };
    };
    "assert-plus-0.2.0" = {
      name = "assert-plus";
      packageName = "assert-plus";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
        sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
      };
    };
    "jsprim-1.4.0" = {
      name = "jsprim";
      packageName = "jsprim";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsprim/-/jsprim-1.4.0.tgz";
        sha1 = "a3b87e40298d8c380552d8cc7628a0bb95a22918";
      };
    };
    "sshpk-1.11.0" = {
      name = "sshpk";
      packageName = "sshpk";
      version = "1.11.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/sshpk/-/sshpk-1.11.0.tgz";
        sha1 = "2d8d5ebb4a6fab28ffba37fa62a90f4a3ea59d77";
      };
    };
    "assert-plus-1.0.0" = {
      name = "assert-plus";
      packageName = "assert-plus";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    };
    "extsprintf-1.0.2" = {
      name = "extsprintf";
      packageName = "extsprintf";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
        sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
      };
    };
    "json-schema-0.2.3" = {
      name = "json-schema";
      packageName = "json-schema";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    };
    "verror-1.3.6" = {
      name = "verror";
      packageName = "verror";
      version = "1.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
        sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
      };
    };
    "asn1-0.2.3" = {
      name = "asn1";
      packageName = "asn1";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      };
    };
    "dashdash-1.14.1" = {
      name = "dashdash";
      packageName = "dashdash";
      version = "1.14.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    };
    "getpass-0.1.6" = {
      name = "getpass";
      packageName = "getpass";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/getpass/-/getpass-0.1.6.tgz";
        sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
      };
    };
    "jsbn-0.1.1" = {
      name = "jsbn";
      packageName = "jsbn";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    };
    "tweetnacl-0.14.5" = {
      name = "tweetnacl";
      packageName = "tweetnacl";
      version = "0.14.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    };
    "jodid25519-1.0.2" = {
      name = "jodid25519";
      packageName = "jodid25519";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
        sha1 = "06d4912255093419477d425633606e0e90782967";
      };
    };
    "ecc-jsbn-0.1.1" = {
      name = "ecc-jsbn";
      packageName = "ecc-jsbn";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
        sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
      };
    };
    "bcrypt-pbkdf-1.0.1" = {
      name = "bcrypt-pbkdf";
      packageName = "bcrypt-pbkdf";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
        sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
      };
    };
    "mime-db-1.26.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.26.0.tgz";
        sha1 = "eaffcd0e4fc6935cf8134da246e2e6c35305adff";
      };
    };
    "punycode-1.4.1" = {
      name = "punycode";
      packageName = "punycode";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    };
    "block-stream-0.0.9" = {
      name = "block-stream";
      packageName = "block-stream";
      version = "0.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/block-stream/-/block-stream-0.0.9.tgz";
        sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
      };
    };
    "isexe-1.1.2" = {
      name = "isexe";
      packageName = "isexe";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-1.1.2.tgz";
        sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
      };
    };
  };
  args = {
    name = "paxton";
    packageName = "paxton";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      (sources."ffi-2.2.0" // {
        dependencies = [
          sources."bindings-1.2.1"
          (sources."debug-2.6.3" // {
            dependencies = [
              sources."ms-0.7.2"
            ];
          })
          sources."ref-1.3.4"
          sources."ref-struct-1.1.0"
          sources."nan-2.5.1"
        ];
      })
      (sources."node-gyp-3.6.0" // {
        dependencies = [
          (sources."fstream-1.0.11" // {
            dependencies = [
              sources."inherits-2.0.3"
            ];
          })
          (sources."glob-7.1.1" // {
            dependencies = [
              sources."fs.realpath-1.0.0"
              (sources."inflight-1.0.6" // {
                dependencies = [
                  sources."wrappy-1.0.2"
                ];
              })
              sources."inherits-2.0.3"
              (sources."once-1.4.0" // {
                dependencies = [
                  sources."wrappy-1.0.2"
                ];
              })
              sources."path-is-absolute-1.0.1"
            ];
          })
          sources."graceful-fs-4.1.11"
          (sources."minimatch-3.0.3" // {
            dependencies = [
              (sources."brace-expansion-1.1.6" // {
                dependencies = [
                  sources."balanced-match-0.4.2"
                  sources."concat-map-0.0.1"
                ];
              })
            ];
          })
          (sources."mkdirp-0.5.1" // {
            dependencies = [
              sources."minimist-0.0.8"
            ];
          })
          (sources."nopt-3.0.6" // {
            dependencies = [
              sources."abbrev-1.1.0"
            ];
          })
          (sources."npmlog-4.0.2" // {
            dependencies = [
              (sources."are-we-there-yet-1.1.2" // {
                dependencies = [
                  sources."delegates-1.0.0"
                  (sources."readable-stream-2.2.5" // {
                    dependencies = [
                      sources."buffer-shims-1.0.0"
                      sources."core-util-is-1.0.2"
                      sources."isarray-1.0.0"
                      sources."inherits-2.0.3"
                      sources."process-nextick-args-1.0.7"
                      sources."string_decoder-0.10.31"
                      sources."util-deprecate-1.0.2"
                    ];
                  })
                ];
              })
              sources."console-control-strings-1.1.0"
              (sources."gauge-2.7.3" // {
                dependencies = [
                  sources."aproba-1.1.1"
                  sources."has-unicode-2.0.1"
                  sources."object-assign-4.1.1"
                  sources."signal-exit-3.0.2"
                  (sources."string-width-1.0.2" // {
                    dependencies = [
                      sources."code-point-at-1.1.0"
                      (sources."is-fullwidth-code-point-1.0.0" // {
                        dependencies = [
                          sources."number-is-nan-1.0.1"
                        ];
                      })
                    ];
                  })
                  (sources."strip-ansi-3.0.1" // {
                    dependencies = [
                      sources."ansi-regex-2.1.1"
                    ];
                  })
                  sources."wide-align-1.1.0"
                ];
              })
              sources."set-blocking-2.0.0"
            ];
          })
          (sources."osenv-0.1.4" // {
            dependencies = [
              sources."os-homedir-1.0.2"
              sources."os-tmpdir-1.0.2"
            ];
          })
          (sources."request-2.81.0" // {
            dependencies = [
              sources."aws-sign2-0.6.0"
              sources."aws4-1.6.0"
              sources."caseless-0.12.0"
              (sources."combined-stream-1.0.5" // {
                dependencies = [
                  sources."delayed-stream-1.0.0"
                ];
              })
              sources."extend-3.0.0"
              sources."forever-agent-0.6.1"
              (sources."form-data-2.1.2" // {
                dependencies = [
                  sources."asynckit-0.4.0"
                ];
              })
              (sources."har-validator-4.2.1" // {
                dependencies = [
                  (sources."ajv-4.11.5" // {
                    dependencies = [
                      sources."co-4.6.0"
                      (sources."json-stable-stringify-1.0.1" // {
                        dependencies = [
                          sources."jsonify-0.0.0"
                        ];
                      })
                    ];
                  })
                  sources."har-schema-1.0.5"
                ];
              })
              (sources."hawk-3.1.3" // {
                dependencies = [
                  sources."hoek-2.16.3"
                  sources."boom-2.10.1"
                  sources."cryptiles-2.0.5"
                  sources."sntp-1.0.9"
                ];
              })
              (sources."http-signature-1.1.1" // {
                dependencies = [
                  sources."assert-plus-0.2.0"
                  (sources."jsprim-1.4.0" // {
                    dependencies = [
                      sources."assert-plus-1.0.0"
                      sources."extsprintf-1.0.2"
                      sources."json-schema-0.2.3"
                      sources."verror-1.3.6"
                    ];
                  })
                  (sources."sshpk-1.11.0" // {
                    dependencies = [
                      sources."asn1-0.2.3"
                      sources."assert-plus-1.0.0"
                      sources."dashdash-1.14.1"
                      sources."getpass-0.1.6"
                      sources."jsbn-0.1.1"
                      sources."tweetnacl-0.14.5"
                      sources."jodid25519-1.0.2"
                      sources."ecc-jsbn-0.1.1"
                      sources."bcrypt-pbkdf-1.0.1"
                    ];
                  })
                ];
              })
              sources."is-typedarray-1.0.0"
              sources."isstream-0.1.2"
              sources."json-stringify-safe-5.0.1"
              (sources."mime-types-2.1.14" // {
                dependencies = [
                  sources."mime-db-1.26.0"
                ];
              })
              sources."oauth-sign-0.8.2"
              sources."performance-now-0.2.0"
              sources."qs-6.4.0"
              sources."safe-buffer-5.0.1"
              sources."stringstream-0.0.5"
              (sources."tough-cookie-2.3.2" // {
                dependencies = [
                  sources."punycode-1.4.1"
                ];
              })
              sources."tunnel-agent-0.6.0"
              sources."uuid-3.0.1"
            ];
          })
          sources."rimraf-2.6.1"
          sources."semver-5.3.0"
          (sources."tar-2.2.1" // {
            dependencies = [
              sources."block-stream-0.0.9"
              sources."inherits-2.0.3"
            ];
          })
          (sources."which-1.2.12" // {
            dependencies = [
              sources."isexe-1.1.2"
            ];
          })
        ];
      })
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "";
      license = "ISC";
    };
    production = true;
  };
in
{
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}
