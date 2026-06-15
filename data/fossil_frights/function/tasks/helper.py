import os

def _(difficulty: str) -> None:
    for dirpath, dirnames, filenames in os.walk(difficulty):
        for file_name in filenames:
            name = ".".join(file_name.split(".")[:-1])
            extension = file_name.split(".")[-1]
            if extension != "mcfunction":
                continue
            if name not in ("selected_book","ensure_book"):
                continue
            os.remove(os.path.join(dirpath,file_name))

_("easy")
_("medium")
_("hard")
_("final")
