% 用web查看软件包管理器
doc_browser.

% 查看所有的包
pack_list("").

% 模糊匹配有db的包
pack_list("db").

% 查看本地已安装的包
pack_list_installed.

% 查看chess_db包的详细信息
pack_info(chess_db).

% 查看xsd包的详细信息
pack_info(xsd).

% 安装xsd，yaml包
pack_install(xsd).
pack_install(yaml).

% 卸载xsd包
pack_remove(xsd).