import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    id: page
    width: parent.width
    height: window.height - header_height * 1.1

    property int header_height: 0
    property string titleHeader: qsTr("Dialogs")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            Button {
                width: parent.width
                text: "Mensagem"
                color: Theme.yellow

                onClicked: messageDialog.open()

                Dialog {
                    id: messageDialog
                    height: 80

                    border: true
                    title: "Mensagem"

                    Spacing {
                        Text {
                            text: "Lorem ipsum dolor sit amet..."
                        }
                    }
                }
            }
        }

        Spacing {
            Button {
                id: button_confirmationDialog
                width: parent.width
                text: "Confirmação"
                color: Theme.red

                onClicked: confirmationDialog.open()

                Dialog {
                    id: confirmationDialog

                    width: 300
                    modal: true

                    title: "Confirmação"
                    standardButtons: Dialog.Yes | Dialog.No

                    Spacing {
                        Text {
                            text: "The document has been modified.\nDo you want to save your changes?"
                        }
                        CheckBox {
                            text: "Do not ask again"
                            anchors.right: parent.right
                        }
                    }
                }
            }
        }

        Spacing {
            Button {
                text: "Input"
                width: parent.width
                onClicked: inputDialog.open()

                Dialog {
                    id: inputDialog

                    width: 300
                    modal: true
                    blur: true

                    header_height: -page.header_height
                    parent: page

                    title: "Input"
                    standardButtons: Dialog.Ok | Dialog.Cancel

                    ColumnLayout {
                        spacing: 20
                        anchors.fill: parent
                        Text {
                            elide: Label.ElideRight
                            text: "Please enter the credentials:"
                            Layout.fillWidth: true
                        }
                        TextField {
                            focus: true
                            placeholderText: "Username"
                            Layout.fillWidth: true
                        }
                        TextField {
                            placeholderText: "Password"
                            echoMode: TextField.PasswordEchoOnEdit
                            Layout.fillWidth: true
                        }
                    }
                }
            }
        }

        Image {
            source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
            width: parent.width
            fillMode: Image.PreserveAspectFit
        }
    }
}
