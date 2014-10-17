= data-driver

== DESCRIPTION:

Consume a comma-separated (CSV) or modern Excel (XLSX) file containing data and return an array containing a key/value collections of your data (e.g., a Hash).

== INSTALLATION:

gem install data-driver

== DATA SCHEMA:

=== CSV

descriptor,descriptor,descriptor,etc.,etc.
yourdata,yourdata,yourdata,etc.,etc.
moreofyourdata,moreofyourdata,moreofyourdata,etc.,etc.

=== XLSX

| descriptor      | descriptor      | descriptor      | etc.  | etc.  |
| yourdata        | yourdata        | yourdata        | etc.  | etc.  |
| moreofyourdata  | moreofyourdata  | moreofyourdata  | etc.  | etc.  |

== USAGE:

=== Basic Usage

DataDriver.consume('path-to-file')

NOTE: Will auto-detect the file type. If there is more than one worksheet, the first one will be used by default.

=== Specifying a Worksheet

DataDriver.consume('path-to-file', 1)

NOTE: The second parameter accepts a number, and numbering starts at 0. So 1 is the second worksheet.

== LICENSE:

The MIT License (MIT)

Copyright (c) 2014 Dave Haeffner

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
