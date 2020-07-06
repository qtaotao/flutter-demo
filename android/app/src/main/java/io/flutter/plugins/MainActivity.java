package io.flutter.plugins;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.plugin.FlutterPluginJumpToAct;

public class MainActivity extends FlutterActivity {

    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       // setContentView(io.flutter.plugins.R.layout.activity_main);
        GeneratedPluginRegistrant.registerWith(this);
        registerCustomPlugin(this);


    }
    private static void registerCustomPlugin(PluginRegistry registrar) {

        FlutterPluginJumpToAct.registerWith(registrar.registrarFor(FlutterPluginJumpToAct.CHANNEL));

       /* FlutterPluginCounter.registerWith(registrar.registrarFor(FlutterPluginCounter.CHANNEL));

        FlutterPluginPermissions.registerWith(registrar.registrarFor(FlutterPluginPermissions.CHANNEL));

        FlutterPluginAMap.registerWith(registrar.registrarFor(FlutterPluginAMap.EVENT_CHANNEL));*/

    }
}
