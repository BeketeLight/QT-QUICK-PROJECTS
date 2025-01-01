import QtQuick
import QtQuick.Controls
import "ui/bottomBar"
import "ui/TopBar"
import "ui/rightScreen"

Window {
    width: 2060
    height: 900
    visible: true
    title: qsTr("Spotify Interface")
    Rectangle{
        id:background
        anchors.fill: parent
        color: "#3d3a3a"
        //opacity: 0.5
    }
    TopBar{
        id: topBar
    }
    Rectangle{
        id: mainWindow
        width: parent.width
        height: 700 // parent.height
        color: "gray"

        anchors{
            top: topBar.bottom
            topMargin: 10
            bottom: bottomPlayerBar.top
            bottomMargin: 5
        }

        SplitView{
            id: controller
            anchors.fill: parent
            orientation: Qt.Horizontal
            Rectangle{
                SplitView.minimumWidth: 165
                SplitView.preferredWidth: 250
                color: "yellow"
                opacity: 0.5

                radius: 25

                // right screen content
                RightScreen{
                    width: parent.width
                    anchors.left: parent.left
                }
            }

            Rectangle{
                SplitView.minimumWidth: 300
                SplitView.fillWidth: true
                color: "blue"
                opacity: 0.5
                radius: 25
            }

            Rectangle{
                SplitView.minimumWidth: 150
                SplitView.preferredWidth: 250

               color: "red"
               radius: 25
            }

        }

    }
    BottomPlayerBar{
        id: bottomPlayerBar
    }

}




