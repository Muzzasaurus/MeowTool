///loadSkins()
//loads all of the skins

var i; i=0

global.skinDir=global.datadir+"skins\"
global.skinsList = ds_list_create()

for (dir=file_find_first(global.skinDir+"*",fa_directory);dir!="";dir=file_find_next()) {
    if (directory_exists(global.skinDir+dir) and dir!="." and dir!="..") {
        folders[i]=global.skinDir+dir+"\"
        ds_list_add(global.skinsList, dir)

        i+=1
    }
}
file_find_close()
global.skinCount = i
if (is_real(savedatap("currentSkin"))) {
    savedatap("currentSkin", "meowtool_default")
}
