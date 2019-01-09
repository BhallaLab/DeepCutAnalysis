#!/usr/bin/env python3
import os
import sys
import glob
import datetime

try:
    import tensorflow as tf
except ImportError as e:
    print( 'Failed to import tensorflow' )
    raise e

import deeplabcut as dlc

videos = glob.glob( '/root/Work/good_trials/*.avi' )
prjName = 'EarTwitch'
userName = 'Hrishikesh'
cwd = '/tmp/testing' 
today = datetime.datetime.today().strftime( '%Y-%m-%d' )
configPath = os.path.join(cwd, '%s-%s-%s'%(prjName, userName, today), 'config.yaml')

def main():
    if not os.path.isfile(configPath):
        print( '[INFO] Creating project' )
        dlc.create_new_project(prjName, userName, videos, working_directory = cwd)
    assert os.path.isfile( configPath ), "File %s does not exists" % configPath \
            + " Has anything changed in config file config.yaml creation?"
    #dlc.extract_frames(configPath, 'automatic', 'kmeans' )
    #dlc.label_frames(configPath)
    #dlc.check_labels(configPath)
    #dlc.create_training_dataset(configPath, num_shuffles=1)

if __name__ == "__main__":
    main()
