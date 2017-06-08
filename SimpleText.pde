class SimpleText {
  // Possibly turn this into a 'textbox' like element;
  StringBuilder text;
  SimpleText() {
    text = new StringBuilder();
  }

  StringBuilder getText() {
    return text;
  }

  void set(Object text_) {
    clear();
    append(text_);
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

  String toString() {
    return text.toString();
  }
}