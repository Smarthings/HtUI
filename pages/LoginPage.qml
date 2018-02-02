import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

import "../UiTheme/"

Item {
    anchors.fill: parent

    function login()
    {
        if (settings.hashAccess === "")
            return;

        if (settings.hashAccess === "" && !settings.rememberAccess)
            return;

        app.showPage("HomePage");
    }

    Component.onCompleted: login();

    Image {
        id: image_background
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "qrc:/images/background.png"
        z: 1
    }

    Rectangle {
        id: frame
        width: (window.width < 300)? window.width : 300
        height: (window.height < 300)? window.height: 300
        x: (parent.width /2) - (width /2)
        y: (parent.height /2) - (height /2)
        z: 2
        radius: 5
        border.color: Theme.border
        color: Theme.background

        FastBlur {
            id: fastBlur
            anchors.fill: parent
            radius: 80
            opacity: 0.3

            source: ShaderEffectSource {
                anchors.fill: parent
                sourceItem: image_background
                sourceRect: Qt.rect(frame.x, frame.y, frame.width, frame.height)
            }
        }

        ApplicationPage {
            anchors.fill: parent
            clip: true

            Column {
                property int _padding: 20
                anchors.fill: parent
                spacing: 10
                padding: 10
                rightPadding: _padding
                leftPadding: _padding

                Text {
                    width: parent.width - parent._padding *2

                    text: qsTr("Login")
                    font.pixelSize: 24
                    font.bold: true

                    horizontalAlignment: Text.AlignHCenter
                }

                Item {
                    width: parent.width
                    height: 10
                }

                TextField {
                    id: username
                    width: parent.width - parent._padding *2
                    flat: true
                    placeholderText: qsTr("Usuário")

                    Keys.onPressed: {
                        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter)
                            button_login.clicked();
                    }
                }

                TextField {
                    id: password
                    width: parent.width - parent._padding *2
                    flat: true

                    echoMode: TextInput.Password
                    placeholderText: qsTr("Senha")

                    Keys.onPressed: {
                        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter)
                            button_login.clicked();
                    }
                }

                CheckBox {
                    width: parent.width
                    text: qsTr("Lembrar meu acesso")
                    checked: settings.rememberAccess

                    onClicked: settings.rememberAccess = checked
                }

                Item {
                    width: parent.width
                    height: 10
                }

                Button {
                    id: button_login
                    width: parent.width - parent._padding *2
                    text: qsTr("Entrar")
                    textStyle.font.capitalization: Font.AllUppercase
                    color: Theme.info

                    onClicked: {
                        var _username = username.text
                        var _password = password.text

                        if (_username === "" || _password === "")
                        {
                            message.text = "Usuário ou senha inválidos";
                            message.visible = true;
                        }
                        else
                        {
                            settings.hashAccess = "flasdfj09f8as90df8sdfijsadfksdf89sdf";
                            login();
                        }
                    }
                }

                ToolTip {
                    id: message
                    timeout: 6000
                }
            }
        }
    }
}
