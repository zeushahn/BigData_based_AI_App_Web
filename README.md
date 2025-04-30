# BigData_based_AI_App_Web
빅데이터 기반 AI활용 앱&amp;웹 개발자(풀스택) 취업캠프

연락처 : kennysy@naver.com

### GPS iOS
	<!-- GPS -->
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>This app needs access to location when open.</string>

	<key>NSLocationAlwaysUsageDescription</key>
	<string>This app needs access to location when in the background.</string>

	<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
	<string>This app needs access to location when open and in the background.</string>	

### Camera & Gallery
	<key>NSCameraUsageDescription</key>
	<string>Used to demonstrate image picker plugin</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>Used to capture audio for image picker plugin</string>
	<key>NSPhotoLibraryUsageDescription</key>
	<string>Used to demonstrate image picker plugin</string>

### 확대 축소
	body: Center(
	        child: PhotoView(
	          backgroundDecoration: const BoxDecoration(
	            color: Colors.white, // PhotoView 내부 배경색을 흰색으로 설정
	          ),
	          imageProvider: NetworkImage(
	            value[0],
	          ),
	        ),
	      ),


## Team Project 주제 : 신발 가게
	기간 : 2025-05-01 ~ 2025-05-08
	발표방법 : PT와 동영상으로 해당 Part제작자가 발표 
	개발언어 : Dart, SQL
	Framework : Flutter
	Database : SQLite(Local Database를 사용함으로 팀원들이 DB정보를 따로 공유하여야 함)
	
	요건정의)
	1. 사용자는 엡을 사용하여 본사의 서버(가상)에 접속하여 신발을 구매할 수 있다.
	2. 사용자는 본인이 구매한 신발의 내역을 확인할 수 있다, 
	3. 사용자는 본인이 구매한 신발은 해당 회사의 대리점으로 방문하여 찾을 수 있다. 
	4. 사용자는 앱을 이용하여 신발 대리점 위치 및 본인의 위치를 확인 할 수 있다.
	5. 대리점의 위치는 서울으로 한정되며 각 자치구에 1개씩의 대리점이 존재한다.
	6. 대리점을 방문하여 본인이 구매한 구매번호를 대리점 직원에게 확인하여 해당 지점에서 신발을 찾아온다.
	7. 본사의 경우에는 사용자가 신발 구매시 희망 대리점을 선택함으로 구매 신청후 즉시 해당 대리점으로 신발을 발송한다.
	8. 대리점장은 해당 월일의 재고를 파악할 수 있어야 한다. 
	9. 본사의 임원인 경우에는 제품별, 일자별 등으로 현황을 파악할 수 있어야 한다.
	10. 고객의 반품이 있는 경우에는 대리점을 방문하여 반품을 요청할 수 있다.
	11. 반품 신발 정보는 신발 제조사에게 전달하여 원인 규명을 받는다.
	12. 본사에서는 신발의 판매 현황을 파악하여 신발 재고가 30% 미만인 경우에는 신발 제조사에게 신발 구매 요청을 하여야 한다, 이때 사원이 품의를 작성하여 팀장, 이사 까지 결재를 득하면 자동으로 발주가 발생한다.

