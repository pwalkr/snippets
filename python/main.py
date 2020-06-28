#!/usr/bin/env python

import argparse


def main():
    args = parse_args()
    print("Operating on file '{}'".format(args.file.name))
    if args.verbose:
        print("Verbose mode enabled")


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('file', type=argparse.FileType('r'),
                        help="file to process")
    parser.add_argument("--verbose", action="store_true",
                        help="increase output verbosity")
    return parser.parse_args()


if __name__ == "__main__":
    # Called directly
    main()
# else included as a module
