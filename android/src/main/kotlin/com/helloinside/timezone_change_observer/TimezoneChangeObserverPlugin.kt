package com.helloinside.timezone_change_observer

import android.content.BroadcastReceiver
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel

class TimezoneChangeObserverPlugin : BroadcastReceiver(), EventChannel.StreamHandler, FlutterPlugin {

    var _context: Context? = null
    var _sink: EventChannel.EventSink? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        _context = flutterPluginBinding.applicationContext
        val eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, "timezone_change_observer")
        eventChannel.setStreamHandler(this)

        val intentFilter = IntentFilter()
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED")

        ContextWrapper(_context).registerReceiver(this, intentFilter)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        _context = null
    }

    override fun onReceive(context: Context, intent: Intent) {
        // TODO(Sikander): check with Team if we need to distinguish between Intents types in future
        // println(intent.getAction().toString())
        this._sink?.success(true)
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        _sink = events
    }

    override fun onCancel(arguments: Any?) {
        _sink = null
    }

}