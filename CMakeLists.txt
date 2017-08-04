add_custom_target ( custom-sys-load-viewer
    COMMAND /bin/bash ${CMAKE_CURRENT_SOURCE_DIR}/install_plasmoid_local.sh install plasmoid org.cshnick.plasma.systemloadviewer
    DEPENDS ${source_list}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

add_custom_target ( uncustom-sys-load-viewer
    COMMAND /bin/bash ${CMAKE_CURRENT_SOURCE_DIR}/install_plasmoid_local.sh remove plasmoid  org.cshnick.plasma.systemloadviewer
    DEPENDS ${source_list}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
