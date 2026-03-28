# Capla Extractor OCaml and Rocq

This repo just provides the capabilities of using Capla Extractor from OCaml, and, most importantly, from Rocq. 

## Installing
In order to use Capla Extractor from Rocq one just needs to first download this repository and the original capla extractor repository. This can be easily done in one command:

```bash
git clone --recursive https://github.com/NeonOxide/capla_extractor_ocaml
cd capla_extractor_ocaml
```

After doing this, choose your favourite opam switch or create a new one: 
```bash
eval (opam env)
```
or
```bash
opam switch create your_switch_name 5.4.1
```

Then install the package (note that capla extractor is a Rust project and it requires Cargo to compile):

```bash
opam install .
```

Then just click y a couple of times (read what you are accepting but it should just be making sure that you want to install a dev package).

And that is all that is needed!

## Use 
If you have used already the original capla_extractor tool (https://github.com/NeonOxide/capla_extractor), this is a limited but still powerful enough variation to use from inside Rocq. 

After installing the tool, you just need to import the plugin and then call it with the arguments you want:

```Rocq
From CaplaExtractor Require Import CaplaExtractor.

CaplaExtract [ "file1.b" "file2.b" ] PREFIX "prefix" OUTPUT_DIR "./" OUTPUT_NAME "output" .
```

This will extract all possible functions from the specified files with the specified prefix chosen. These files will be put on the output directory chosen and the files will have name "output.c" and "output.h" in this case.

In order to link these files with CertiRocq generated code just follow the guide in https://github.com/NeonOxide/capla_extractor#workflow-examples. 

