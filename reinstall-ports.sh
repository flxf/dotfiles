#!/bin/bash

curl -O http://svn.macports.org/repository/macports/contrib/restore_ports/restore_ports.tcl
chmod +x restore_ports.tcl
sudo ./restore_ports.tcl ports
