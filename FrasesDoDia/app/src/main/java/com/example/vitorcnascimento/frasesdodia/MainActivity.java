package com.example.vitorcnascimento.frasesdodia;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void gerarNovaFrase(View view){
        String[] frases = {
                "frase 1",
                "frase 2",
                "frase 3",
                "frase 4",
                "frase 5",
        };
        int numero = new Random().nextInt(frases.length);
l
        TextView frase = findViewById(R.id.textResultado);

        frase.setText(frases[numero]);

    }
}
