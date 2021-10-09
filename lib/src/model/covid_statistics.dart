import 'package:xml/xml.dart';
import 'package:corona/src/utils/xml_utils.dart';

class Covid19StatisticsModel {
  String? accDefRate;
  String? accExamCnt;
  String? accExamCompCnt;
  String? careCnt;
  String? clearCnt;
  String? createDt;
  String? deathCnt;
  String? decideCnt;
  String? examCnt;
  String? resutlNegCnt;
  String? seq;
  String? stateDt;
  String? stateTime;
  String? updateDt;
  Covid19StatisticsModel({
    this.accDefRate,
    this.accExamCnt,
    this.accExamCompCnt,
    this.careCnt,
    this.clearCnt,
    this.createDt,
    this.deathCnt,
    this.decideCnt,
    this.examCnt,
    this.resutlNegCnt,
    this.seq,
    this.stateDt,
    this.stateTime,
    this.updateDt,
  });

  factory Covid19StatisticsModel.fromXml(XmlElement xml) {
    return Covid19StatisticsModel(
      accDefRate: xmlUtils.searchResult(xml, 'accDefRate'),
      accExamCnt: xmlUtils.searchResult(xml, 'accExamCnt'),
      accExamCompCnt: xmlUtils.searchResult(xml, 'accExamCompCnt'),
      careCnt: xmlUtils.searchResult(xml, 'careCnt'),
      clearCnt: xmlUtils.searchResult(xml, 'clearCnt'),
      createDt: xmlUtils.searchResult(xml, 'createDt'),
      deathCnt: xmlUtils.searchResult(xml, 'deathCnt'),
      decideCnt: xmlUtils.searchResult(xml, 'decideCnt'),
      examCnt: xmlUtils.searchResult(xml, 'examCnt'),
      resutlNegCnt: xmlUtils.searchResult(xml, 'resutlNegCnt'),
      seq: xmlUtils.searchResult(xml, 'seq'),
      stateDt: xmlUtils.searchResult(xml, 'stateDt'),
      stateTime: xmlUtils.searchResult(xml, 'stateTime'),
      updateDt: xmlUtils.searchResult(xml, 'updateDt'),
    );
  }
}
