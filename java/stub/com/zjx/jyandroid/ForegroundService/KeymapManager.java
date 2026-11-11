package com.zjx.jyandroid.ForegroundService;

import java.util.LinkedList;
import java.util.Map;

import com.zjx.jyandroid.base.MError;

// Compile-only stub for the real KeymapManager. Member names/signatures match the smali so that
// mdm.LocalKeymapStore binds to the real class at runtime. Bodies are never shipped.
public class KeymapManager {

    // synthetic accessors present in smali:
    //   a(km) -> field b  (content cache: Map<String keymapId, Map content>)
    //   b(km) -> field a  (bundle map:   Map<String bundleId, BundleInfo>)
    public static Map a(KeymapManager km) { return null; }
    public static Map b(KeymapManager km) { return null; }

    // builds KeymapContentInfo (name, componentCount) from a content Map.
    public static KeymapContentInfo q(Map content) { return null; }

    // r(id, h) -> get one keymap (LocalKeymapStore.getKeymap is wired here in smali)
    public void r(String id, GetKeymapCompletionHandler h) {}
    // L(content, id, h) -> update a keymap (LocalKeymapStore.updateKeymap is wired here in smali)
    public void L(Map content, String id, UpdateKeymapCompletionHandler h) {}
    // t(bundleId, h) -> list keymaps of one bundle
    public void t(String bundleId, GetKeymapListCompletionHandler h) {}
    // D(id, h) -> set selected keymap of its bundle
    public void D(String id, SetSelectedKeymapCompletionHandler h) {}

    public static class KeymapContentInfo {
        public int componentCount;
        public boolean forPhone;
        public String name;
        public KeymapContentInfo() {}
    }

    public static class KeymapInfo extends KeymapContentInfo {
        public String bundleId;
        public String id;
        public boolean isOfficial;
        public String updateTime;
        public KeymapInfo() {}
    }

    public static class Keymap {
        public final Map content;
        public final KeymapInfo info;
        public Keymap(KeymapInfo info, Map content) { this.info = info; this.content = content; }
    }

    public static class BundleInfo {
        public LinkedList keymapInfoList;
        public String selectedKeymapId;
        public BundleInfo() {}
    }

    public interface GetKeymapListCompletionHandler { void requestCompleted(MError e, LinkedList list, String selectedId); }
    public interface GetKeymapCompletionHandler { void requestCompleted(MError e, Keymap keymap); }
    public interface CreateKeymapCompletionHandler { void requestCompleted(MError e, String newId); }
    public interface UpdateKeymapCompletionHandler { void requestCompleted(MError e); }
    public interface DeleteKeymapCompletionHandler { void requestCompleted(MError e); }
    public interface RenameKeymapCompletionHandler { void requestCompleted(MError e); }
    public interface SetSelectedKeymapCompletionHandler { void requestCompleted(MError e); }
    public interface GetConfigContentByIdCompletionHandler { void requestCompleted(MError e, String content); }
}
