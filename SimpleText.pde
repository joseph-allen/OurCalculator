class SimpleText {
  // Possibly turn this into a 'textbox' like element;
  StringBuilder text;
  String pingText;
  int pingTimer;
  SimpleText() {
    text = new StringBuilder();
    pingText = "";
  }

  StringBuilder getText() {
    return text;
  }

  void set(Object text_) {
    clear();
    append(text_);
    if (text.toString().equals("Invalid Input")) {
      clear();
      setPingText("Invalid Input");
    }
  }

  void del() {
    if (text.length() != 0) { //don't delete if String is already empty
      text.deleteCharAt(text.length()-1);
    }
  }

  void append(Object text_) {
    text.append(text_);
  }

  void clear() {
    text.delete(0, text.length());
  }
  void setPingText(String pingText_) {
    pingText = pingText_;
    pingTimer = millis() + 500;
  }
  String toString() {
    return text.toString();
  }
  public String getDisplayString() {
    if (millis() < pingTimer) {
      return pingText;
    } else {
      return toString();
    }
  }
}