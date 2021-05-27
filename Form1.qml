import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 425
    height: 940



    Rectangle {
        id: firstpageRect
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#51f2b8"
            }

            GradientStop {
                position: 0.98134
                color: "#122df1"
            }
        }

        StandardAnimation {
            id: openingAnim
            targets: [titleLogo, goldLogo]
            to: 1
            running: true

        }
        StandardAnimation {
            id: openingAnim2
            targets: [roofLogo, hangingPotLogo, lanternLogo, plantBg]
            running: true

        }
        SequentialAnimation {
            running: true
            StandardAnimation {
                target: swipeIndicator
                easing.type: Easing.InExpo
                to: 1
                duration: 3500
            }
            PauseAnimation {
                duration: 100
            }
            SequentialAnimation {
                loops: Animation.Infinite
                StandardAnimation {
                    target: swipeIndicator.swipeText
                    from : 1
                    to: 0
                    duration: 700
                }
                StandardAnimation {
                    target: swipeIndicator.swipeText
                    from: 0
                    to: 1
                    duration: 700
                }
            }
        }



        StandardImage {
            id: roofLogo
            source: "qrc:/UI/Assets/roof.png"
            width: 200
            anchors {
                rightMargin: -31
                topMargin: -122
                top: parent.top
                right: parent.right
            }
        }
        StandardImage {
            id: hangingPotLogo
            source: "qrc:/UI/Assets/hanging-pot.png"
            anchors {
                topMargin: -33
                top: roofLogo.bottom
                right: parent.right
                rightMargin: -46
            }
        }
        StandardImage {
            id: lanternLogo
            source: "qrc:/UI/Assets/paper-lantern.png"
            anchors {
                topMargin: 44
                rightMargin: 51
                top: parent.top
                right: parent.right

            }
        }
        Image {
            id: titleLogo
            source: "qrc:/UI/Assets/Piggy Banky_Transparent2.png"
            scale: 1
            anchors {
                centerIn: parent
            }
        }
        StandardImage {
            z : 1
            id: goldLogo
            y: 837
            opacity: 1
            source: "qrc:/UI/Assets/gold-ingot.png"
            width: 70
            anchors {
                bottomMargin: 33
                leftMargin: 96
                bottom: parent.bottom
                left: parent.left
            }
            rotation: -45
        }
        StandardImage {
            id: plantBg
            y: 786
            z : 0
            width:  200
            opacity: 0.7
            source : "qrc:/UI/Assets/tarragon.png"
            anchors {
                bottomMargin: -46
                leftMargin: -28
                bottom: parent.bottom
                left: parent.left
            }
            rotation: 29
        }

        SwipeImage {
            id: swipeIndicator
            anchors {
                right: parent.right
                bottom: parent.bottom
                bottomMargin: 130
                rightMargin: -20
            }
        }


    }



}
