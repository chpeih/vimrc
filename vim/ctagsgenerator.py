#! /usr/bin/env python

import os
import sys
import pdb

# --------------------------------------------------------------------------
#
# @brief 
# Main function
#
# --------------------------------------------------------------------------
if __name__=='__main__':
    #pdb.set_trace()
    try:
        '''argv[1] is current file name'''
        '''argv[2] is current directory'''
        '''argv[3] is target tags directory'''
        print(sys.argv[1])
        print(sys.argv[2])
        print(sys.argv[3])
        FileName = sys.argv[1]
        if (FileName.find('.')):
            FileType = FileName[ FileName.find('.')+1 : len(FileName) ]
        else:
            FileType = 'Unknown'
        FileDir = os.path.abspath(sys.argv[2])
        TagsDir = os.path.abspath(sys.argv[3])
        os.chdir(TagsDir)
        if (FileType == 'cpp' or FileType == 'c' or FileType == 'cxx' or FileType == 'cc' or FileType == 'h' or FileType == 'hpp' or FileType == 'hh' or FileType == 'c++'):
            os.system("ctags -R " + FileDir + " --languages=c++ --c++-kinds=+px --fields=+iaKSz --extra=+qf")
        elif (FileType == "py"):
            os.system("ctags -R " + FileDir + " --languages=python --fields=+iaS --extra=+q")
        elif (FileType == "php"):
            os.system("ctags -R " + FileDir + " --languages=php --fields=+iaS --extra=+q")
        elif (FileType == "java"):
            os.system("ctags -R " + FileDir + " --languages=java --java-kinds=+p --fields=+iaS --extra=+q")
        elif (FileType == "perl"):
            os.system("ctags -R " + FileDir + " --languages=perl --perl-kinds=+px --fields=+iaS --extra=+q")
        elif (FileType == "js" or FileType == "javascript"):
            os.system("ctags -R " + FileDir + " --languages=perl --perl-kinds=+px --fields=+iaS --extra=+q")
        elif (FileType == "sql"):
            os.system("ctags -R " + FileDir + " --languages=sql --sql-kinds=+px --fields=+iaS --extra=+q")
        else:
            os.system("ctags -R " + FileDir)
    except Exception, e:
        print e
