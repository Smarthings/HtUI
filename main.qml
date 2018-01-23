import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0

import "./UiTheme/"

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 560
    title: qsTr("HtUI")

    Settings {
        id: settings

        property bool dark: false
        onDarkChanged: Theme.dark = dark

        property color accent: Theme.blue
    }

    Component.onCompleted: {
        Theme.accent = Theme.blue
    }

    header: ToolBar {
        Text {
            anchors.fill: parent
            padding: 10
            verticalAlignment: Text.AlignVCenter

            text: "HtUI kit"
            font.pixelSize: 20
            font.bold: true
        }
    }

    StackView {
        anchors.fill: parent
        initialItem: Page {
            anchors.fill: parent
            color: Theme.view

            Column {
                anchors.fill: parent
                spacing: 5

                Switch {
                    width: parent.width
                    text: "Tema Dark"
                    checked: settings.dark

                    onClicked: settings.dark = checked
                }

                CheckBox {
                    width: parent.width
                    text: "Checkbox"
                }

                RadioButton {
                    width: parent.width
                    text: "Radio button"
                }

                SwitchDelegate {
                    width: parent.width
                    text: "Switch Delegate"
                }

                CheckDelegate {
                    width: parent.width
                    text: "CheckDelegate"
                }

                RadioDelegate {
                    width: parent.width
                    text: "Radio delegate"
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                    darker: true
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                    flat: true
                }

                Slider {
                    width: parent.width
                }

                Row {
                    width: parent.width

                    Button {
                        text: "Open Dialog"
                        color: Theme.blue
                        textStyle.color: Theme.lighter

                        onClicked: dialog.open()
                    }

                    Button {
                        text: "Open Dialog"
                        color: Theme.blue
                        flat: true

                        onClicked: dialog.open()
                    }
                }

                Image {
                    source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }

    Dialog {
        id: dialog
        width: 300
        height: 300
        y: 80
        modal: true

        title: "Título do Dialog"

        standardButtons: Dialog.Ok | Dialog.Cancel

        Page {
            anchors.fill: parent
            clip: true

            Column {
                anchors.fill: parent
                spacing: 5

                Switch {
                    width: parent.width
                    text: "Switch"
                }

                CheckBox {
                    width: parent.width
                    text: "Checkbox"
                }

                RadioButton {
                    width: parent.width
                    text: "Radio button"
                }

                SwitchDelegate {
                    width: parent.width
                    text: "Switch Delegate"
                }

                CheckDelegate {
                    width: parent.width
                    text: "CheckDelegate"
                }

                RadioDelegate {
                    width: parent.width
                    text: "Radio delegate"
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                    darker: true
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                }

                TextField {
                    width: parent.width
                    placeholderText: "Teste"
                    flat: true
                }

                Slider {
                    width: parent.width
                }

                Row {
                    width: parent.width

                    Button {
                        text: "Button"
                        color: Theme.alert
                    }

                    Button {
                        text: "Button flat"
                        color: Theme.blue
                        flat: true
                    }
                }

                Image {
                    source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }

}
