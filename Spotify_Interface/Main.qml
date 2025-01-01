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

            Rectangle{
                SplitView.minimumWidth: 100
                SplitView.maximumWidth: 2000
                SplitView.preferredWidth: 300
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
                SplitView.maximumWidth: 2060
                SplitView.preferredWidth: 1300
                color: "blue"
                opacity: 0.5
                radius: 25
            }

            Rectangle{
               width: 300
               color: "red"
               radius: 25
            }

        }

    }
    BottomPlayerBar{
        id: bottomPlayerBar
    }









}




