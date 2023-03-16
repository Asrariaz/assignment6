void main() {
  
  //question 1
  
  print(isPalindrome("racecar"));
  print(isPalindrome("hello")); 
  print(isPalindrome("")); 

  //question 2
  print(sortLettersAlphabetically("hello"));
  print(sortLettersAlphabetically("world"));
  print(sortLettersAlphabetically("abcd"));

  //question 3
   print(convertToTitleCase("the quick brown fox")); 
  print(convertToTitleCase("this is a test string")); 
  print(convertToTitleCase("hello world"));
}

//question 4
List<int> mylist = [1, 2, 3, 4, 5];
  var result = findSecondLowestAndGreatest(mylist);
  print("Second lowest number: ${result[0]}");
  print("Second greatest number: ${result[1]}");

  // question 5
   String str = "w3resource.com";
  String letter = "o";
  int count = countLetter(str, letter);
  print("Number of occurrences of letter "$letter" in string "$str": $count");
  // quesion 6
  List<String> countries = ["Australia", "Germany", "United States of America"];
  print(getLongestCountry(countries));
// question 1
bool isPalindrome(String str) {
  int length = str.length;
  for (int i = 0; i < length / 2; i++) {
    if (str[i] != str[length - i - 1]) {
      return false;
    }
  }
  return true;
}
//question 2
String sortLettersAlphabetically(String str) {
  List<String> chars = str.split("");
  chars.sort();
  return chars.join("");
}

//question 3

String convertToTitleCase(String str) {
  List<String> words = str.split(" ");
  for (int i = 0; i < words.length; i++) {
    String firstLetter = words[i][0].toUpperCase();
    String restOfWord = words[i].substring(1).toLowerCase();
    words[i] = "$firstLetter$restOfWord";
  }
  return words.join(" ");
}

//quesion 4
List<int> findSecondLowestAndGreatest(List<int> mylist) {
  var lowest = mylist[0];
  int secondLowest = null;
  int greatest = mylist[0];
  int secondGreatest = null;

  for (int i = 0; i < mylist.length; i++) {
    int currentNumber = mylist[i];

    if (currentNumber < lowest) {
      secondLowest = lowest;
      lowest = currentNumber;
    } else if (secondLowest == null || currentNumber < secondLowest) {
      secondLowest = currentNumber;
    }

    if (currentNumber > greatest) {
      secondGreatest = greatest;
      greatest = currentNumber;
    } else if (secondGreatest == null || currentNumber > secondGreatest) {
      secondGreatest = currentNumber;
    }
  }

  return [secondLowest, secondGreatest];
}
//question 6
String getLongestCountry(List<String> countries) {
  String longestCountry = "";
  for (String country in countries) {
    if (country.length > longestCountry.length) {
      longestCountry = country;
    }
  }
  return longestCountry;
}
//question 6
int countLetter(String str, String letter) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == letter) {
      count++;
    }
  }
  return count;
}