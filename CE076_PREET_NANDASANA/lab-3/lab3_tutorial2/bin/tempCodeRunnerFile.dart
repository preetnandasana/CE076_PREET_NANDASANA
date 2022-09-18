int repeatTask(int times, int input, Function task) {
    int ans = input;
    for (int i = 0; i < times; i++) ans = task(ans);
    return ans;
  }

  num power(int a) {
    num answer = pow(a, 2);
    return answer;
  }