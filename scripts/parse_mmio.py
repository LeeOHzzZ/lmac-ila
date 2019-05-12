#!/usr/bin/python3

import argparse
from enum import Enum


class SpecState(Enum):
    ADDR = 1
    NAME = 2
    DESP = 3


def ParseMmioText(in_file):
    state = SpecState.ADDR
    result = []

    with open(in_file, 'r') as fr:
        for line in fr:
            if state is SpecState.ADDR:
                terms = (line.strip('\n')).split('_')
                if len(terms) == 2:
                    addr = terms[1]
                    try:
                        val = int(addr, 16)
                    except BaseException:
                        print('Fail handling address value', addr)
                    state = SpecState.NAME

                else:
                    state = SpecState.ADDR

            elif state is SpecState.NAME:
                name = line.strip('\n')

                if name == 'Reserved':
                    state = SpecState.ADDR
                else:
                    state = SpecState.DESP

            else:
                desp = line.strip('\n')
                state = SpecState.ADDR

                pair = {}
                pair['name'] = name
                pair['addr'] = addr
                pair['desp'] = desp
                result.append(pair)

    return result


def GenMacro(pairs, out_file):
    with open(out_file, 'w') as fw:
        for p in pairs:
            desp = p['desp']
            name = p['name']
            addr = p['addr']

            fw.write('// {0}\n'.format(desp))
            fw.write('#define {0} "{1}"\n'.format(name.upper(), name))
            fw.write('#define {0}_BWID 32\n'.format(name.upper()))
            fw.write('#define {0}_ADDR 0x{1}\n'.format(name.upper(), addr))
            fw.write('\n')


def GenSetup(pairs, out_file):
    with open(out_file, 'w') as fw:
        for p in pairs:
            desp = p['desp']
            name = p['name']
            addr = p['addr']

            fw.write('// {0}\n'.format(desp))
            fw.write('NewState(m, {0}, {0}_BWID);\n'.format(name.upper()))
            fw.write('\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Generate macro from MMIO list text')
    parser.add_argument('mmio_file', type=str, help='mmio mapping file')
    parser.add_argument('out_file', type=str, help='output file name')
    parser.add_argument('--macro', action='store_true', help='generate macro')
    parser.add_argument('--setup', action='store_true', help='geenrate setup')
    args = parser.parse_args()

    pairs = ParseMmioText(args.mmio_file)

    if args.macro:
        GenMacro(pairs, args.out_file)

    if args.setup:
        GenSetup(pairs, args.out_file)
