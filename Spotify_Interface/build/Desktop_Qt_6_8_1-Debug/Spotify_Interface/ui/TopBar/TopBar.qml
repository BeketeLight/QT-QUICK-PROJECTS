import QtQuick 2.15

Rectangle{


    width: parent.width
    color: "black"
    height: 70
    //opacity: 0.6

    Row{
        id: topLeftBar
        anchors{
            right:parent.right
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        spacing: 40

        Rectangle{
            width: 200
            height:40
            radius: 25
            color: "white"

            anchors{
                verticalCenter: notificationIcon.verticalCenter
            }

            Text{
                anchors.centerIn: parent
                text: "Explore Premium"
                font.pixelSize: 20

            }
        }

        Image {
            id: notificationIcon
            source: "qrc:/assets/bell.png"
            width:32
            height: parent.height/2
            anchors{
                verticalCenter: friendsIcon.verticalCenter
            }
        }

        Image {
            id: friendsIcon
            source: "qrc:/assets/friends.png"
            width:32
            height: parent.height/2

            anchors{
                // right: profile.left
                // rightMargin: 60
                verticalCenter: profile.verticalCenter
            }
        }
        Rectangle{
            id: profile
            width: 50
            height: 50
            radius: 25
            color: "steelblue"

            anchors{
                // right: parent.right
                verticalCenter: parent.verticalCenter
                // rightMargin: 10
            }
        }


    }



    Row{

        spacing: 20
        anchors.centerIn: parent

        Rectangle{
            height: 50
            width: 50
            radius: 25
            color: "#3d3a3a"

            Image {
                id: homeIcon
                source: "qrc:/assets/homepage.png"
                height:32
                width:32
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: searchBar
            radius: 30
            color: "#3d3a3a"
            width: 500
            height: 50
            //opacity: 0.3
            // anchors{
            //     top: parent.top
            //     horizontalCenter: parent.horizontalCenter
            //     verticalCenter: parent.horizontalCenter
            //     topMargin: 5

            // }
            clip: true
            TextInput{
                text: "what do you want to play?"
                font.pixelSize: 32
                anchors{
                    left: searchIcon.right
                    verticalCenter: searchBar.verticalCenter
                    leftMargin: 10
                    //fill: parent
                }

            }

            Image {
                id: searchIcon
                source: "qrc:/assets/magnifying-glass.png"
                anchors{
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 5
                }
                height: 32
                width: 32
            }
            Image {
                id: browseIcon
                source: "qrc:/assets/cart.png"
                anchors{
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin:10

                }
                height: 32
                width: 32
            }


        }

    }




}


