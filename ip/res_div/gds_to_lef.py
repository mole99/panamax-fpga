import os
import subprocess

# Generate the LEF file using magic
PDK_ROOT = os.getenv('PDK_ROOT', '~/.ciel')
PDK = os.getenv('PDK', 'sky130A')

os.environ['PDK_ROOT'] = PDK_ROOT
os.environ['PDK'] = PDK

top_module = 'res_div'

gds_in = f'gds/{top_module}.gds.gz'
lef_out = f'lef/{top_module}.lef'

rcfile = os.path.join(PDK_ROOT, PDK, 'libs.tech', 'magic', f'{PDK}.magicrc')

magic_input = ''
magic_input += f'gds read {gds_in}\n'
magic_input += f'load {top_module}\n'
magic_input += f'select top cell\n'# {top_module}\n'

magic_input += f'port vdda use power\n'
magic_input += f'port vssa use ground\n'
magic_input += f'port vdda class inout\n'
magic_input += f'port vssa class inout\n'
magic_input += f'port vref class inout\n'

magic_input += f'lef write {lef_out} -pinonly\n'

with subprocess.Popen(
    ['magic'] + ['-dnull', '-noconsole', '-rcfile', rcfile],
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    stdin=subprocess.PIPE,
    text=True,
) as process:

    stdout, stderr = process.communicate(magic_input)
    returncode = process.returncode

    if returncode != 0:
        print(f'Subprocess exited with error code {returncode}')

    print(stdout)
    print(stderr)
