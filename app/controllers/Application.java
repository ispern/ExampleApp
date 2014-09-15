package controllers;

import play.*;
import play.mvc.*;

import views.html.*;

public class Application extends Controller {

    public static Result adminIndex() {
        return ok(views.html.admin.index.render());
    }

    public static Result frontIndex() {
        return ok(views.html.front.index.render());
    }

}
