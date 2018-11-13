
extern crate protoc_rust_grpc;

fn main() {
    protoc_rust_grpc::run(protoc_rust_grpc::Args {
        out_dir: "src/api",
        includes: &[],
        input: &["../svc/authkm.proto", "../svc/contentkm.proto"],
        rust_protobuf: true,
        ..Default::default()
    }).expect("protoc-rust-grpc");
}
