class Student {
  private fullName: string;

  constructor(firstName: string,
              middleName: string,
              lastName: string,
              suffix: string = "") {
    this.fullName = firstName + " " + middleName + " " + lastName + " " + suffix;
  }

  greeter(): string {
      return "Hello, " + this.fullName;
  }
}

let user0 = new Student("Winthrop", "Lyon", "Saville",  "III");
let user1 = new Student("Wink", "", "Saville");

document.body.innerHTML = user0.greeter() + " aka: " + user1.greeter();
