//create a form
let courseForm = document.createElement("form");
courseForm.setAttribute('method',"post");
courseForm.setAttribute('action',"");

//create input element
let i = document.createElement("input");
i.type = "text";
i.name = "user_name";
i.id = "user_name1";

//create a checkbox
let c = document.createElement("input");
c.type = "checkbox";
c.id = "checkbox1";
c.name = "check1";

//create a button
let s = document.createElement("input");
s.type = "submit";
s.value = "Submit";

// add all elements to the form
courseForm.appendChild(i);
courseForm.appendChild(c);
courseForm.appendChild(s);

// add the form inside the body
// $("body").append(courseForm);   //using jQuery or
document.getElementsByTagName('body')[0].appendChild(courseForm); //pure javascript
