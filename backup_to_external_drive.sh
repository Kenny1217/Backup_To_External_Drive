#!/bin/bash
echo "script started"

PATH_TO_BASKUP="f:/Backups" #Where the backups will be kept
TODAY=`date +%m-%d-%Y` #The folder name if that day backup

echo "creating needed directories"
mkdir -p ${PATH_TO_BASKUP}/${TODAY}/{Desktop,Documents,Downloads,Pictures,Videos} #Create directories and sub-directories
echo "directories created"

echo "setting paths"
LOCAL_USER="kmorr"
LOCAL_DESKTOP_PATH="C:/Users/${LOCAL_USER}/OneDrive/Desktop"
LOCAL_DOCUMENTS_PATH="C:/Users/${LOCAL_USER}/OneDrive/Documents"
LOCAL_DOWNLOADS_PATH="C:/Users/${LOCAL_USER}/Downloads"
LOCAL_PICTURES_PATH="C:/Users/${LOCAL_USER}/OneDrive/Pictures"
LOCAL_VIDEOS_PATH="C:/Users/${LOCAL_USER}/Videos"
echo "paths set"

echo "backup started"

echo "copying desktop files"
cp -r ${LOCAL_DESKTOP_PATH}/* ${PATH_TO_BASKUP}/${TODAY}/Desktop/
echo "done copying desktop files"

echo "copying documents files"
cp -r ${LOCAL_DOCUMENTS_PATH}/* ${PATH_TO_BASKUP}/${TODAY}/Documents/
echo "done copying documents files"

echo "copying downloads files"
cp -r ${LOCAL_DOWNLOADS_PATH}/* ${PATH_TO_BASKUP}/${TODAY}/Downloads/
echo "done copying downloads files"

echo "copying picture files"
cp -r ${LOCAL_PICTURES_PATH}/* ${PATH_TO_BASKUP}/${TODAY}/Pictures/
echo "done copying picture files"

echo "copying videos files"
cp -r ${LOCAL_VIDEOS_PATH}/* ${PATH_TO_BASKUP}/${TODAY}/Videos/
echo "done copying video files"

echo "backup done"

echo "script completed"