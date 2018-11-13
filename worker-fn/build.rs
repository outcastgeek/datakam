
extern crate protoc_rust;

use protoc_rust::Customize;

fn main() {
    protoc_rust::run(protoc_rust::Args {
        out_dir: "src/api",
//        includes: &[],
        input: &["../svc/authvanille.proto", "../svc/contentvanille.proto"],
        includes: &["../svc"],
        customize: Customize {
            ..Default::default()
        },
    }).expect("protoc");
}
