import Felgo 3.0
import QtQuick 2.12

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Rectangle {
        id:statusBarRect
        anchors.top: parent.top
        height: Theme.statusBarHeight
        width:parent.width
        color:"white"
    }

    NavigationStack {

        anchors.topMargin: Theme.statusBarHeight
        Page {
            id:page
            title: qsTr("Main Page")
            navigationBarHidden: true
            backgroundColor:"lightgray"

            AppButton {
                id:lightButton
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -lightButton.height*1.5
                text:"StatusBarStyleWhite"
                onClicked: {
                    statusBarRect.color="white"
                    nativeUtils.setStatusBarStyle(NativeUtils.StatusBarStyleBlack)
                }
            }
            AppButton {
                id:blackButton
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: blackButton.height*1.5
                text:"StatusBarStyleBlack"
                onClicked: {
                    statusBarRect.color="black"
                    nativeUtils.setStatusBarStyle(NativeUtils.StatusBarStyleWhite)
                }
            }
        }

    }
}
