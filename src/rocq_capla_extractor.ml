(* Declare the external Rust function *)
external rust_process_files : string list -> string -> string -> string -> string = "rust_process_files"

let capla_extract (files: string list) (prefix: string) (output_dir: string) (output_name: string) =
    rust_process_files files prefix output_dir output_name

