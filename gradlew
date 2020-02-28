<?xml version="1.0" encoding="utf-8"?><!-- Copyright (C) 2016 The Android Open Source Project

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.

-->

<!-- Layout used by SeekBarPreference for the seekbar widget style. -->
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:clipChildren="false"
    android:clipToPadding="false"
    android:gravity="center_vertical"
    android:minHeight="?android:attr/listPreferredItemHeightSmall"
    android:paddingEnd="?android:attr/listPreferredItemPaddingEnd"
    android:paddingStart="?android:attr/listPreferredItemPaddingStart">

    <LinearLayout
        android:id="@+id/icon_frame"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="-4dp"
        android:gravity="start|center_vertical"
        android:minWidth="60dp"
        android:orientation="horizontal"
        android:paddingBottom="4dp"
        android:paddingEnd="12dp"
        android:paddingTop="4dp">

        <androidx.preference.internal.PreferenceImageView
            android:id="@android:id/icon"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            app:maxHeight="48dp"
            app:maxWidth="48dp" />
    </LinearLayout>

    <RelativeLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginEnd="@dimen/pref_seekbar_fix_negative"
        android:layout_marginStart="@dimen/pref_seekbar_fix_negative"
        android:layout_weight="1"
        android:clipChildren="false"
        android:clipToPadding="false"
        android:paddingBottom="8dp"
        android:paddingEnd="@dimen/pref_seekbar_fix_positive"
        android:paddingStart="@dimen/pref_seekbar_fix_positive"
        android:paddingTop="16dp">

        <TextView
            android:id="@android:id/title"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:ellipsize="marquee"
            android:fadingEdge="horizontal"
            android:maxLines="1"
            android:singleLine="true"
            android:textAppearance="?android:attr/textAppearanceListItem" />

        <TextView
            android:id="@android:id/summary"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_alignStart="@android:id/title"
            android:layout_below="@android:id/title"
            android:maxLines="4"
            android:textAppearance="?android:attr/textAppearanceListItemSecondary"
            android:textColor="?android:attr/textColorSecondary" />

        <!-- Using UnPressableLinearLayout as a workaround to disable the pressed state propagation
        to the children of this container layout. Otherwise, the animated pressed state will also
        play for the thumb in the AbsSeekBar in addition to the preference's ripple background.
        The background of the SeekBar is also set to null to disable the ripple background -->
        <androidx.preference.UnPressableLinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_alignStart="@android:id/title"
            android:layout_below="@android:id/summary"
            android:layout_marginEnd="@dimen/pref_seekbar_fix_negative"
            android:layout_marginStart="@dimen/pref_seekbar_fix_negative"
            android:clipChildren="false"
            android:clipToPadding="false">

            <SeekBar
                android:id="@+id/seekbar"
                android:layout_width="0dp"
                android:layout_height="wrap_content"
                android:layout_weight="1"
                android:background="@null"
                android:clickable="false"
                android:focusable="false"
                android:paddingEnd="@dimen/pref_seekbar_fix_positive"
                android:paddingStart="@dimen/pref_seekbar_fix_positive" />

            <TextView
                android:id="@+id/seekbar_value"
                android:layout_width="@dimen/preference_seekbar_value_width"
                android:layout_height="match_parent"
                android:layout_marginEnd="@dimen/pref_seekbar_fix_positive"
                android:layout_marginStart="@dimen/preference_seekbar_padding_end"
                android:ellipsize="marquee"
                android:fadingEdge="horizontal"
          