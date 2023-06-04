import os
import sys
import chardet
import importlib.util

# список стандартных библиотек Python
std_lib = sys.modules.keys()

# список уникальных имен библиотек
unique_libs = set()

def process_file(file_path):
    """
    Обрабатывает файл с заданным путем.
    Ищет все имена библиотек в файле и добавляет их в список unique_libs.
    """
    encoding = None
    with open(file_path, 'rb') as f:
        data = f.read()
        encoding = chardet.detect(data)['encoding']
    with open(file_path, "r", encoding=encoding) as f:
        code = f.read()
        for line in code.split("\n"):
            line = line.strip()
            if line.startswith("import"):
                line = line.split(' ')[1]
                if '.' not in line:
                    if line not in unique_libs:
                        unique_libs.add(line)
                else:
                    line = line.split('.')[0]
                    if line not in unique_libs:
                        unique_libs.add(line)
            
            if line.startswith("from"):
                line = line.split(' ')[1]
                if not line.startswith("."):
                    line = line.split('.')[0]
                    if line not in unique_libs:
                        unique_libs.add(line)
                if '.' not in line:
                    if line not in unique_libs:
                        unique_libs.add(line)

def process_directory(directory):
    """
    Обрабатывает директорию и вызывает функцию process_file для каждого файла .py.
    """
    for dirpath, dirnames, filenames in os.walk(directory):
        for filename in filenames:
            if filename.endswith(".py"):
                file_path = os.path.join(dirpath, filename)
                process_file(file_path)

def write_to_file(libs, filename):
    """
    Записывает список имен библиотек в файл с заданным именем.
    """
    with open(filename, "w") as f:
        for lib in libs:
            f.write(lib + "\n")

# получаем относительный путь к папке blocknote-master
blocknote_dir = os.path.join(os.path.dirname(__file__), "blocknote-master")
result_file = os.path.join(os.path.dirname(__file__), "requirements.txt")

# вызов функций
process_directory(blocknote_dir)
unique_libs = [lib for lib in unique_libs if lib not in std_lib]
write_to_file(unique_libs, result_file)
