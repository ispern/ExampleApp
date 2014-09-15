package controllers.ui

import play.api._
import play.api.mvc._
import play.api.Play.current
import java.io.File
import controllers.Assets

object Routing extends Controller {

  def assetHandler(path: String, file: String) = {
    Assets.at("/public", file)
  }

  lazy val atHandler = if (Play.isProd) assetHandler(_: String, _: String) else DevAssets.assetHandler(_: String, _: String)

  def at(file: String): Action[AnyContent] = {
    atHandler("ui/", file)
  }

  def extAt(file: String): Action[AnyContent] = {
    atHandler("ui/ext/", file)
  }
  def packagesAt(file: String): Action[AnyContent] = {
    atHandler("ui/packages/", file)
  }
  def adminAt(file: String): Action[AnyContent] = {
    atHandler(if(Play.isProd) "public/Admin/" else "ui/Admin/", file)
  }
  def frontAt(file: String): Action[AnyContent] = {
    atHandler(if(Play.isProd) "public/Front/" else "ui/Front/", file)
  }
}

object DevAssets extends Controller {
  def assetHandler(path: String, fileName: String): Action[AnyContent] = Action {
    val file = new File(path, fileName)
    if (file.isDirectory || !file.exists()){
      NotFound
    } else {
      Ok.sendFile(file, inline = true).withHeaders(CACHE_CONTROL -> "no-store")
    }
  }
}