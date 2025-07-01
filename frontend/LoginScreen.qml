import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: loginScreen
    signal loginSuccess(string role, string username)

    ColumnLayout {
        anchors.centerIn: parent
        width: 300
        spacing: 20

        Label {
            text: "Systeme de correction des examens"
            font.pixelSize: 24
            Layout.alignment: Qt.AlignHCenter
        }

        TextField {
            id: usernameField
            placeholderText: "Nom d'utilisateur"
            Layout.fillWidth: true
        }

        TextField {
            id: passwordField
            placeholderText: "Mot de passe"
            echoMode: TextInput.Password
            Layout.fillWidth: true
        }

        Button {
            text: "Se connecter"
            Layout.fillWidth: true
            onClicked: {
                var success = backend.auth.authenticate(usernameField.text, passwordField.text)
                if (success) {
                    var role = backend.auth.getUserRole(usernameField.text)
                    loginSuccess(role, usernameField.text)
                } else {
                    errorLabel.visible = true
                }
            }
        }

        Label {
            id: errorLabel
            text: "Nom d'utilisateur ou mot de passe est incorrecte"
            color: "red"
            visible: false
            Layout.alignment: Qt.AlignHCenter
        }
    }
}