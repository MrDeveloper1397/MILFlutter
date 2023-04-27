class DayCollection {
  String? recAmount;
  int? acnumb;
  String? venturecd;
  String? ventureName;
  int? branchCd;
  String? branchName;
  String? bankName;

  DayCollection(
      {this.recAmount,
        this.acnumb,
        this.venturecd,
        this.ventureName,
        this.branchCd,
        this.branchName,this.bankName});

  DayCollection.fromJson(Map<String, dynamic> json) {
    recAmount = json['RecAmount'];
    acnumb = json['Acnumb'];
    venturecd = json['venturecd'];
    ventureName = json['VentureName'];
    branchCd = json['BranchCd'];
    branchName = json['BranchName'];
    if(json.containsKey('BankName')) {
      bankName = json['BankName'];
    }else{
      bankName = 'Bank';
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RecAmount'] = this.recAmount;
    data['Acnumb'] = this.acnumb;
    data['venturecd'] = this.venturecd;
    data['VentureName'] = this.ventureName;
    data['BranchCd'] = this.branchCd;
    data['BranchName'] = this.branchName;
    if(data.containsKey('BankName')) {
      data['BankName'] = this.bankName;
    }else{
      data['BankName'] = 'Bank';
    }

    return data;
  }
}