from traceback import print_exc
import subprocess
import sys
import os


# Config
CWD = os.path.dirname(os.path.abspath(__file__))
GAME_COMP = "t6"
MODE_COMP = "comp"
COMPILER_XENSIK = "gsc-tool.exe"
COMPILED_DIR = os.path.join("compiled", GAME_COMP)
REPLACE_DEFAULT = {}


def edit_in_place(path: str, **replace_pairs) -> None:
    with open(path, "r", encoding="utf-8") as gsc_io:
        gsc_content = gsc_io.read()

    for old, new in replace_pairs.items():
        if old in gsc_content:
            print(f"Replacing '{old}' with '{new}'")
            gsc_content = gsc_content.replace(old, new)

    with open(path, "w", encoding="utf-8") as gsc_io:
        gsc_io.write(gsc_content)


def wrap_subprocess_call(*calls: str, timeout: int = 5, **sbp_args) -> subprocess.CompletedProcess:
    call = " ".join(calls)
    try:
        print(f"Call: {call}")
        process = subprocess.run(call, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=timeout, **sbp_args)
    except Exception:
        print_exc()
        sys.exit()
    else:
        print(process.stdout.decode())


def arg_path(*paths: str) -> str:
    return f'"{os.path.join(*paths)}"'


def file_rename(old: str, new: str) -> None:
    if os.path.isfile(new):
        os.remove(new)
    if os.path.isfile(old):
        os.rename(old, new)


def main(cfg: list) -> None:
    os.chdir(CWD)
    for f in os.listdir(CWD):
        path: str = os.path.join(CWD, f)
        if os.path.isfile(path) and f.endswith(".gsc"):
            wrap_subprocess_call(COMPILER_XENSIK, MODE_COMP, GAME_COMP, "pc", arg_path(CWD, f))


if __name__ == "__main__":
    main(sys.argv)
