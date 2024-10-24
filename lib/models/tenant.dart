class TenantData {
  final String propertyName;
  final int propertyNumber;
  final String paymentSystem;
  final int rentValue;
  final String contractStartDate;
  final String contractEndDate;
  final int contractDuration;
  final String contactInfo;

  TenantData({
    required this.propertyName,
    required this.propertyNumber,
    required this.paymentSystem,
    required this.rentValue,
    required this.contractStartDate,
    required this.contractEndDate,
    required this.contractDuration,
    required this.contactInfo,
  });
}

TenantData dummyTenantData = TenantData(
    propertyName: 'AlRayyan',
    propertyNumber: 8,
    paymentSystem: 'Visa Card',
    rentValue: 5000,
    contractStartDate: '1/11/2024',
    contractEndDate: '1/11/2025',
    contractDuration: 12,
    contactInfo: 'SomeOne@Example.com');
