# !/bin/bash

app_name="WeChat"
framework_name="WeChatPlugin"
app_bundle_path="/Applications/${app_name}.app/Contents/MacOS"
app_executable_path="${app_bundle_path}/${app_name}"
app_executable_backup_path="${app_executable_path}_backup"
framework_path="${app_bundle_path}/${framework_name}.framework"
# 备份WeChat原始可执行文件
if [ -f "$app_executable_backup_path" ]
then
rm "$app_executable_path"
rm -rf "$framework_path"
mv "$app_executable_backup_path" "$app_executable_path"
fi
