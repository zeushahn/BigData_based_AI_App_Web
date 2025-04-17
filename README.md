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
