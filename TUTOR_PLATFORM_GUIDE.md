# Live Tutor Platform - Setup & Troubleshooting Guide

## How to Access the Tutor Platform

### 1. Navigate to Live Tutoring
- Click on **"Live Tutoring"** in the main navigation menu
- You'll see all available tutor sessions

### 2. Join a Session
- Look for sessions marked as **"Live Now"** (red badge)
- Click **"Join Now"** button to enter an active session
- For **"Upcoming"** sessions, click **"Register"** to book a spot

## What's Included

### Features

#### 🎨 Interactive Whiteboard
- **Drawing Tools:** Pen, eraser, line, circle, text
- **Color Picker:** Choose any color for annotations
- **Brush Size:** Adjust from 1-20 pixels
- **Undo/Clear:** Revert mistakes or start fresh
- **Download:** Save whiteboard as PNG image
- **Instructor-Only:** Students view in read-only mode

#### 💬 Live Chat
- Real-time messaging during sessions
- User attribution with sender names
- Timestamps on all messages
- Auto-scrolling to latest messages

#### 📚 Study Materials
- Download resources shared by instructor
- View file sizes and descriptions
- Organized material library

#### 👥 Participant Management
- See all session attendees
- View participant roles (student/instructor)
- Active status indicators
- Real-time participant count

#### 🎥 Session Controls (Instructors Only)
- Mute/unmute microphone
- Enable/disable camera
- Upload study materials
- Screen sharing capabilities

## Troubleshooting

### Issue: Sessions Not Showing
**Solution:**
1. Make sure you're on the "Live Tutoring" page
2. Check if sessions exist in the database
3. Verify your internet connection
4. Try refreshing the page (F5)
5. Check browser console (F12) for error messages

**To create test sessions:**
- Sample tutor sessions have been seeded to the database
- Look for: "Introduction to Advanced JavaScript", "Web Development Best Practices", etc.

### Issue: Can't Join a Session
**Solutions:**
- Session might be full (max participants reached)
- Session might have already ended
- Ensure you're logged in first
- Check if the session is still marked as "active" in the list

### Issue: Whiteboard Not Drawing
**Solutions (for Instructors):**
1. Make sure you're in the **instructor role**
2. Select the **"Pen"** tool (default drawing tool)
3. Click and drag on the whiteboard canvas
4. If still not working:
   - Clear the canvas (Trash icon)
   - Try refreshing the page
   - Check browser console for errors

### Issue: Chat Messages Not Sending
**Solutions:**
1. Type your message and press **Enter** or click **Send**
2. Ensure you're logged in
3. Check if chat is enabled for this session
4. Verify your internet connection
5. Wait a moment for the message to appear

### Issue: Can't Download Materials
**Solutions:**
1. Click the **download icon** next to the material
2. Browser should download the file
3. Check your Downloads folder
4. Ensure pop-ups aren't blocked
5. Try a different browser if it persists

## Database Schema

### Tutor Sessions Table
```sql
- id: Unique session identifier
- title: Session name
- description: Session details
- tutor_id: Instructor's user ID
- scheduled_start: Start time
- scheduled_end: End time
- status: scheduled/live/completed
- max_participants: Session capacity
- current_participants: Current attendance
- whiteboard_enabled: Drawing board available
- chat_enabled: Messaging available
- screen_share_enabled: Screen sharing available
- is_active: Session visibility
```

### Participants Table
```sql
- session_id: Associated session
- participant_id: User ID
- participant_name: Display name
- role: student/instructor
- status: active/inactive
- joined_at: Join timestamp
```

### Chat Messages Table
```sql
- session_id: Associated session
- sender_id: Message author
- sender_name: Author display name
- message: Message content
- message_type: text/file/system
- created_at: Message timestamp
```

### Study Materials Table
```sql
- session_id: Associated session
- title: Material name
- description: Material details
- file_url: Download link
- material_type: document/video/link/presentation
- file_size: File size in bytes
```

## Security Features

### Row-Level Security (RLS)
- ✅ Users can only see active sessions
- ✅ Students can only view their own submissions
- ✅ Instructors can manage their own sessions
- ✅ Chat access restricted to session participants
- ✅ Materials download tracking

### Authentication
- ✅ Email/password authentication
- ✅ Session-based access control
- ✅ Automatic session cleanup
- ✅ User role verification

## Performance Tips

1. **For Large Sessions:** Close the participants panel if not needed
2. **For Slow Connections:** Minimize video/chat updates
3. **Whiteboard:** Clear old drawings to improve responsiveness
4. **Materials:** Download large files during slower periods

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| Send Message | Enter |
| Open Browser Console | F12 |
| Refresh Page | F5 or Ctrl+R |
| Full Screen | F11 |

## Browser Requirements

- Chrome/Chromium 90+
- Firefox 88+
- Safari 14+
- Edge 90+
- Modern browser with Canvas API support

## Contact Support

If you encounter issues:
1. Check this guide first
2. Open browser console (F12) and look for red error messages
3. Screenshot the error
4. Try on a different browser
5. Clear browser cache and cookies

---

**Last Updated:** 2024
**Version:** 1.0
