package io.flutter.plugins;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class OneActivity extends Activity implements View.OnClickListener {

    private Button mGoFlutterBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(io.flutter.plugins.R.layout.activity_one);

        mGoFlutterBtn = findViewById(io.flutter.plugins.R.id.go_flutter);

        mGoFlutterBtn.setOnClickListener(this);

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case io.flutter.plugins.R.id.go_flutter:
               /* Intent intent = new Intent(this, MainActivity.class);
                startActivity(intent);*/
               finish();
                break;
        }
    }

}
