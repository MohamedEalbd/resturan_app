class EndPoints {
  static const baseUrl = "https://kanz.nixtzone.com";
  static const signUp = "/api/v1/auth/vendor/register";
  
  static login(String email, String password) {
    return "/api/v1/auth/vendor/login?email=$email&password=$password";
  }

  static getPackages(String email, String password) {
    return "/api_v1_vendor_package_view?email=$email&password=$password";
  }
  static getDataProfile(String email, String password) {
    return "/api/v1/vendor/profile?email=$email&password=$password";
  }
  static updateProfile(String fName, String lName,String phone) {
    return "/api/v1/vendor/update-profile?f_name=$fName&l_name=$lName&phone=$phone";
  }

  static const campaign = "/api/v1/vendor/campaign-leave";
  static const updateAnnouncment = "//api/v1/vendor/update-announcment";
}
