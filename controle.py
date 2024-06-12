import sys
from PyQt6.QtCore import QUrl
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    engine.load(QUrl.fromLocalFile("Screen01.ui.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
