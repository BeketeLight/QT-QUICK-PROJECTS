import QtQuick
import "ui/bottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla UI")



    LeftScreen{
        id: leftScreen
    }



    RightScreen{
        id: rightScreen
    }


    BottomBar{
        id: bottomBar
    }


}
