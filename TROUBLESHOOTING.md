# Troubleshooting Guide

## Website Won't Open in Chrome

### Issue: Localhost not loading

**Solution 1: Make sure the server is running**
```bash
# Check if server is running on port 8000
lsof -ti:8000

# If nothing shows up, start the server:
cd "/Users/masondragos/Desktop/Personal/untitled folder"
python3 -m http.server 8000
```

**Solution 2: Try a different port**
If port 8000 is busy, try:
```bash
python3 -m http.server 8080
# Then visit: http://localhost:8080
```

**Solution 3: Open file directly (limited functionality)**
- Right-click `index.html`
- Select "Open with" → Chrome
- Note: Some features may not work perfectly with file:// protocol

**Solution 4: Clear Chrome cache**
1. Open Chrome
2. Press Cmd+Shift+Delete (Mac) or Ctrl+Shift+Delete (Windows)
3. Clear cached images and files
4. Try again

**Solution 5: Check Chrome Console for errors**
1. Open Chrome
2. Press F12 or Cmd+Option+I (Mac) / Ctrl+Shift+I (Windows)
3. Go to Console tab
4. Look for any error messages
5. Share the errors if you need help

### Common Issues

**Port already in use:**
```bash
# Kill process on port 8000
lsof -ti:8000 | xargs kill -9

# Then start server again
python3 -m http.server 8000
```

**Python not found:**
```bash
# Check if Python is installed
python3 --version

# If not installed, install Python from python.org
# Or use PHP instead:
php -S localhost:8000
```

**Browser shows blank page:**
- Check browser console (F12) for errors
- Verify all files (index.html, styles.css, script.js) are in the same folder
- Make sure file paths are correct

### Quick Test

To verify the server is working:
1. Start server: `python3 -m http.server 8000`
2. Open terminal and run: `curl http://localhost:8000`
3. You should see HTML content
4. If you see HTML, the server is working - try the browser again

### Alternative: Use VS Code Live Server

If you have VS Code:
1. Install "Live Server" extension
2. Right-click on `index.html`
3. Select "Open with Live Server"

### Need More Help?

Check that:
- ✅ All files are in the same directory
- ✅ Server is running (you should see output in terminal)
- ✅ Using http://localhost:8000 (not file://)
- ✅ No firewall blocking localhost
- ✅ Chrome is up to date


