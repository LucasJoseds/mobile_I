class Person {
  int _id;
  String _name;
  String _email;
  String _senha;

  int get id => _id;

  set id(int value) => this._id = value;

  get name => _name;

  set name(value) => _name = value;

  get email => _email;

  set email(value) => _email = value;

  get senha => _senha;

  set senha(value) => _senha = value;

  Person(this._id, this._name, this._email, this._senha);
}
