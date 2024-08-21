import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    print(MediaQuery.of(context).viewInsets.bottom);
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: screenSize.height + MediaQuery.of(context).viewInsets.bottom,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: screenSize.width < 420
                    ? const AssetImage("assets/images/login.png")
                    : const AssetImage("assets/images/login-landscape.png"),
                fit: BoxFit.cover),
          ),
          child: screenSize.width < 420
              ? SingleChildScrollView(
                  child: SizedBox(
                    height: screenSize.height -
                        MediaQuery.of(context).viewInsets.bottom,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            "assets/images/welcome.png",
                            scale: 7,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                          child: Column(
                            children: [
                              TextField(
                                controller: username,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(65, 106, 98, 183),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  hintText: "Username",
                                  prefixIcon: Icon(Icons.email,
                                      color: Color.fromARGB(255, 106, 98, 183)),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: password,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(65, 106, 98, 183),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  hintText: "Password",
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color.fromARGB(255, 106, 98, 183),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              if (!_isPressed)
                                SizedBox(
                                  width: double.maxFinite,
                                  child: OutlinedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          const WidgetStatePropertyAll(
                                        Color.fromARGB(255, 106, 98, 183),
                                      ),
                                      shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isPressed = true;
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text(
                                        "LOGIN",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              if (_isPressed)
                                Text(
                                    "${username.value.text} \n ${password.value.text}")
                            ],
                          ),
                        ),
                        // const Text(
                        //   "Don't have an account? Sign up",
                        //   style: TextStyle(
                        //       color: Color.fromARGB(255, 0, 0, 0),
                        //       fontSize: 16),
                        // ),
                      ],
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Spacer(),
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            "assets/images/welcome.png",
                            scale: 6,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: username,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                hintText: "Username",
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: password,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          if (!_isPressed)
                            SizedBox(
                              width: 300,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: const WidgetStatePropertyAll(
                                    Color.fromARGB(255, 36, 83, 138),
                                  ),
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPressed = true;
                                  });
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(
                            height: 18,
                          ),
                          if (_isPressed)
                            Text(
                                "${username.value.text} \n ${password.value.text}"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              "Don't have an account? Sign up",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
