class Question {
  String _texte;
  bool _reponse;

  Question(this._texte, this._reponse);

  getQuestionText() {
    return _texte;
  }

  getQuestionReponse() {
    return _reponse;
  }
}
