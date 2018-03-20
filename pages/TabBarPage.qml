import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    width: parent.width
    height: window.height - window.header.height

    property string titleHeader: qsTr("TabBar")

    header: TabBar {
        id: header_bar
        width: parent.width
        height: 40

        TabButton {
            height: parent.height
            text: "Home"
            icon: "\uE88A"
            iconSource: material_icons.name
        }

        TabButton {
            height: parent.height
            text: "Page"
            icon: "\uE88B"
            iconSource: material_icons.name
        }

        TabButton {
            height: parent.height
            text: "Page"
            icon: "\uE88C"
            iconSource: material_icons.name
        }
    }

    footer: TabBar {
        id: footer_bar
        width: parent.width
        height: 45

        TabButton {
            height: parent.height
            text: "Home"
            icon: "\uE88A"
            iconSource: material_icons.name
            horizontal: false
        }

        TabButton {
            height: parent.height
            text: "Page"
            icon: "\uE88B"
            iconSource: material_icons.name
            horizontal: false
        }

        TabButton {
            height: parent.height
            text: "Page"
            icon: "\uE88C"
            iconSource: material_icons.name
            horizontal: false
        }
    }

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        TabBar {
            id: tabbar
            width: parent.width
            height: 45

            TabButton {
                height: parent.height
                text: "Home"
            }

            TabButton {
                height: parent.height
                text: "Page"
            }

            TabButton {
                height: parent.height
                text: "Page"
            }
        }
    }
}
