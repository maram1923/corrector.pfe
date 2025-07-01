import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: root
    width: 1200
    height: 800
    visible: true
    title: qsTr("Correction d'examens")

    property var backend: null
    property string currentUserRole: ""
    property string currentUsername: ""

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: LoginScreen {
            onLoginSuccess: {
                root.currentUserRole = role
                root.currentUsername = username
                if (role === "admin") {
                    stackView.push("AdminDashboard.qml")
                } else {
                    stackView.push("TeacherDashboard.qml")
                }
            }
        }
    }

    function logout() {
        stackView.pop(null)
        root.currentUserRole = ""
        root.currentUsername = ""
    }
}