#!/bin/bash

SOURCE=~/StudentRecords
DEST=~/Backups
FILENAME=student_records_$(date +%F).tar.gz

mkdir -p "$DEST"
tar -czf "$DEST/$FILENAME" "$SOURCE"
