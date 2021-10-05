// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:xml/xml.dart';

void main() {
  const bookshelfXml =
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <header>
        <resultCode>00</resultCode>
        <resultMsg>NORMAL SERVICE.</resultMsg>
    </header>
    <body>
        <items>
            <item>
                <accDefRate>2.3798332401</accDefRate>
                <accExamCnt>14731640</accExamCnt>
                <accExamCompCnt>13503131</accExamCompCnt>
                <careCnt>34631</careCnt>
                <clearCnt>284197</clearCnt>
                <createDt>2021-10-05 09:54:11.433</createDt>
                <deathCnt>2524</deathCnt>
                <decideCnt>321352</decideCnt>
                <examCnt>1228509</examCnt>
                <resutlNegCnt>13181779</resutlNegCnt>
                <seq>656</seq>
                <stateDt>20211005</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>null</updateDt>
            </item>
            <item>
                <accDefRate>2.3713479042</accDefRate>
                <accExamCnt>14701224</accExamCnt>
                <accExamCompCnt>13485031</accExamCompCnt>
                <careCnt>34595</careCnt>
                <clearCnt>282669</clearCnt>
                <createDt>2021-10-04 09:50:15.715</createDt>
                <deathCnt>2513</deathCnt>
                <decideCnt>319777</decideCnt>
                <examCnt>1216193</examCnt>
                <resutlNegCnt>13165254</resutlNegCnt>
                <seq>655</seq>
                <stateDt>20211004</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>null</updateDt>
            </item>
        </items>
        <numOfRows>10</numOfRows>
        <pageNo>1</pageNo>
        <totalCount>2</totalCount>
    </body>
</response>''';
  test('코로나 전체 통계', () {
    final document = XmlDocument.parse(bookshelfXml);
    final items = document.findAllElements('item');
    items.forEach((node) {
      node.findAllElements('accDefRate').map((e) => e.text).forEach(print);
    });
  });
}

class Covid19StaticsModel {
  String? accDefRate;
  String? cExamCnt;
  String? cExamCompCnt;
  String? reCnt;
  String? earCnt;
  String? eateDt;
  String? athCnt;
  String? cideCnt;
  String? amCnt;
  String? sutlNegCnt;
  String? seq;
  String? ateDt;
  String? ateTime;
  String? dateDt;
  Covid19StaticsModel({
    this.accDefRate,
    this.cExamCnt,
    this.cExamCompCnt,
    this.reCnt,
    this.earCnt,
    this.eateDt,
    this.athCnt,
    this.cideCnt,
    this.amCnt,
    this.sutlNegCnt,
    this.seq,
    this.ateDt,
    this.ateTime,
    this.dateDt,
  });

  factory Covid19StaticsModel.fromXml(XmlElement xml) {
    return Covid19StaticsModel();
  }
}
